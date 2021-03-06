package com.platform.tools.code;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.platform.config.run.ConfigCore;
import com.platform.constant.ConstantInit;
import com.platform.tools.ToolSqlXml;
import com.platform.tools.ToolString;

/**
 * 定制SqlServer下的代码生成
 * @author 董华健
 */
public class GenerateSqlServer extends GenerateBase {

	private static Logger log = Logger.getLogger(GenerateSqlServer.class);

	/**
	 * 循环生成文件
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		log.info("启动ConfigCore start ......");
    	ConfigCore.getSingleton();
    	log.info("启动ConfigCore end ......");

    	String db_type = PropKit.get(ConstantInit.db_type_key);
		log.info("db_type = " + db_type);
		if(!db_type.equals(ConstantInit.db_type_sqlserver)){
			throw new RuntimeException("请设置init.properties配置文件db.type = sqlserver");
		}
    	
		GenerateBase base = new GenerateSqlServer();
		for (int i = 0; i < tableArr.length; i++) {
			// 数据源名称
			String dataSource = tableArr[i][0]; 
			// 表名
			String tableName = tableArr[i][1]; 
			// 主键
			String pkName = tableArr[i][2]; 
			// 类名
			String className = tableArr[i][3]; 
			// 类名首字母小写
			String classNameSmall = ToolString.toLowerCaseFirstOne(className); 
			
			List<TableColumnDto> colunmList = base.getColunm(tableName);
			
			// 1.生成sql文件
			base.sql(classNameSmall, tableName); 
			
			// 2.生成model
			base.model(className, classNameSmall, dataSource, tableName, pkName, colunmList); 
			
			// 3.生成validator
			base.validator(className, classNameSmall); 
			
			// 4.生成controller
			base.controller(className, classNameSmall, tableName); 
			
			// 5.生成service
			base.service(className, classNameSmall); 

			// 6.生成DTO
//			base.dto(className, classNameSmall, dataSource, tableName, colunmList); 
			
			// 7.生成视图文件
//			base.form(classNameSmall, tableName, colunmList);
//			base.view(classNameSmall, tableName, colunmList);
		}
		
		System.exit(0);
	}
	
	@Override
	public List<TableColumnDto> getColunm(String tableName)  {
		List<TableColumnDto> list = new ArrayList<TableColumnDto>();

		String tableDesc = Db.use(ConstantInit.db_dataSource_main).findFirst(ToolSqlXml.getSql("platform.sqlserver.getTables"), tableName).getStr("value");
		List<Record> listColumn = Db.use(ConstantInit.db_dataSource_main).find(ToolSqlXml.getSql("platform.sqlserver.getColumns"), tableName);
		
		Map<String, String> columnJavaTypeMap = getJavaType(tableName);
				
		for (Record record : listColumn) {
			String column_name = record.getStr("name");
			String column_type = record.getStr("type");
			String character_maximum_length = String.valueOf(record.getNumber("length"));
			String column_comment = record.getStr("remarks");

			// 需要跳过的字段
			if("xxx".equals(column_name) || "yyy".equals(column_name) || "zzz".equals(column_name)){
				continue;
			}
			
			TableColumnDto table = new TableColumnDto();
			table.setTable_name(tableName);
			table.setTable_desc(tableDesc);
			
			table.setColumn_name(column_name);
			table.setColumn_name_upperCaseFirstOne(ToolString.toUpperCaseFirstOne(column_name));
			table.setColumn_type(column_type);
			table.setColumn_length(character_maximum_length);
			table.setColumn_desc(column_comment);
			
			table.setColumn_className(columnJavaTypeMap.get(column_name.toLowerCase()));
			
			list.add(table);
		}
		
		return list;
	}

}
