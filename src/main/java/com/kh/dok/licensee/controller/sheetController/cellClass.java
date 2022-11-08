package com.kh.dok.licensee.controller.sheetController;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.core.io.DefaultResourceLoader;






public class cellClass {

	
	//셀 값 읽기 17x17
	public String[][] test(String name, HttpServletRequest request) {

		XSSFRow row;
		XSSFCell cell;
		int type;
		String[][] num = new String[15][15]; 
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		
		//System.out.println("name 은 : " + name);
		try {
		
			
			FileInputStream inputStream = new FileInputStream(filePath + "\\" + name +".xlsx");
			XSSFWorkbook workbook = new XSSFWorkbook(inputStream);

			//sheet수 취득
			int sheetCn = workbook.getNumberOfSheets();
			//System.out.println("sheet수 : " + sheetCn);

				//System.out.println("취득하는 sheet 이름 : " + workbook.getSheetName(0));

				//0번째 sheet 정보 취득
				XSSFSheet sheet = workbook.getSheetAt(0);

				//취득된 sheet에서 rows수 취득
				int rows = sheet.getPhysicalNumberOfRows();

				//취득된 row에서 취득대상 cell수 취득
				int cells = sheet.getRow(0).getPhysicalNumberOfCells(); 

				for(int q= 0 ; q<15; q++){
					for(int i = 0 ; i<15; i++){
						
						cell = sheet.getRow(q).getCell(i);
						
						if(!(cell.getStringCellValue().equals(".")))
							num[q][i] = cell.getStringCellValue();
						else
							num[q][i] = ".";
						
					}
				}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return num;
	}
	
	
	//테이블 생성
	
	
	
	public void createTeble(String[] arr, String name, HttpServletRequest request){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		
		try {
				inputStream = new FileInputStream(filePath + "//" + "sheetTestExcelBox.xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				XSSFSheet sheet = workbook.getSheetAt(0);	//Class Data 시트
				
				for(String num : arr){
					int n =Integer.parseInt(num)-1;
					int row = n/15;
					int col = n%15;
					sheet.getRow(row).getCell(col).setCellValue("O");	//값 넣기
				}
				outputStream = new FileOutputStream(filePath + "\\" + name +".xlsx");	//만들기
				workbook.write(outputStream);
				outputStream.close();
				
				System.out.println("파일 생성 완료");
				
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				inputStream.close();
				workbook.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	
	
	//셀 삽입
	public void insertCell(String[] arr, String name, String tableName, HttpServletRequest request){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;

		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		try {
				inputStream = new FileInputStream(filePath + "\\" + tableName +".xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				XSSFSheet sheet = workbook.getSheetAt(0);	//Class Data 시트
				
				for(String num : arr){
					int n =Integer.parseInt(num)-1;
					int row = n/15;
					int col = n%15;
					sheet.getRow(row).getCell(col).setCellValue(String.valueOf(name));	//값 넣기
				}
				
				outputStream = new FileOutputStream("C:/Users/qwertyJeong/Desktop/sheetTest/excel"+ tableName +".xlsx");	//만들기
				workbook.write(outputStream);
				outputStream.close();
				
				System.out.println(name+" 사용자가 구매한 면적 갯수 :"+ arr.length);
				
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				inputStream.close();
				workbook.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	//박지용 특정 셀값 수정하기
	public int insertPayTurningCell(String[] arr, String name, String tableName, HttpServletRequest request){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;
		XSSFCell cell;
		int check = 1;

		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		try {
				inputStream = new FileInputStream(filePath + "\\" + tableName +".xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				XSSFSheet sheet = workbook.getSheetAt(0);	//Class Data 시트
				
				cell = sheet.getRow(Integer.parseInt(arr[0])).getCell(Integer.parseInt(arr[1]));
				
				if(cell.getStringCellValue().equals("O")){
					sheet.getRow(Integer.parseInt(arr[0])).getCell(Integer.parseInt(arr[1])).setCellValue(name);	//값 넣기
				}
				else{
					check = 0;
				}
				
				outputStream = new FileOutputStream(filePath + "\\" + tableName +".xlsx");
				workbook.write(outputStream);
				outputStream.close();
				
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				inputStream.close();
				workbook.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		return check;
	}
	
	//박지용 특정 셀값 수정하기
		public int insertPayRefundCell(String name, String tableName, HttpServletRequest request){

			FileInputStream inputStream = null;
			FileOutputStream outputStream = null;
			XSSFWorkbook workbook = null;
			XSSFCell cell;
			int check = 1;

			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String filePath = root + "\\movieRoomFile";
			
			try {
					inputStream = new FileInputStream(filePath + "\\" + tableName +".xlsx");
					workbook = new XSSFWorkbook(inputStream);
					
					XSSFSheet sheet = workbook.getSheetAt(0);	//Class Data 시트
					
					for(int i = 1; i <= 15; i ++){
						for(int y = 1; y <= 15; y++){
							cell = sheet.getRow(i).getCell(y);
							
							if(cell.getStringCellValue().equals(name)){
								sheet.getRow(i).getCell(y).setCellValue("O");	//값 넣기
							}
							else{
								check = 0;
							}
						}
					}
					
					outputStream = new FileOutputStream(filePath + "\\" + tableName +".xlsx");
					workbook.write(outputStream);
					outputStream.close();
					
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}finally{
				try {
					inputStream.close();
					workbook.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
			}
			
			return check;
		}


	//여기부터 정태부분 회차등록할 때 상영관 파일을 만들어주는 것~~
	public String[][] TurningTest(String name, HttpServletRequest request) {

		XSSFRow row;
		XSSFCell cell;
		int type;
		String[][] num = new String[15][15]; 
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		
		System.out.println("movieRoomId = " + name);
		try {
		
			
			FileInputStream inputStream = new FileInputStream(filePath + "\\" + name +".xlsx");
			XSSFWorkbook workbook = new XSSFWorkbook(inputStream);

			//sheet수 취득
			int sheetCn = workbook.getNumberOfSheets();
			System.out.println("sheet수 : " + sheetCn);

				System.out.println("취득하는 sheet 이름 : " + workbook.getSheetName(0));

				//0번째 sheet 정보 취득
				XSSFSheet sheet = workbook.getSheetAt(0);

				//취득된 sheet에서 rows수 취득
				int rows = sheet.getPhysicalNumberOfRows();

				//취득된 row에서 취득대상 cell수 취득
				int cells = sheet.getRow(0).getPhysicalNumberOfCells(); 

				for(int q= 0 ; q<15; q++){
					for(int i = 0 ; i<15; i++){
						
						cell = sheet.getRow(q).getCell(i);
						
						if(!(cell.getStringCellValue().equals(".")))
							num[q][i] = cell.getStringCellValue();
						else
							num[q][i] = ".";
						
					}
				}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return num;
	}
	
	//여기있는 값을 가져온다.
	public void createTurningTeble(String name, String movieRoomRealId, HttpServletRequest request){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;
		//여기야여기~~~
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		
		try {
				inputStream = new FileInputStream(filePath + "//" + movieRoomRealId + ".xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				outputStream = new FileOutputStream(filePath + "\\" + name +".xlsx");	//만들기
				workbook.write(outputStream);
				outputStream.close();
				
				System.out.println("파일 생성 완료");
				
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//셀 삽입
	public void insertTurningCell(String name, String tableName, HttpServletRequest request){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;

		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\movieRoomFile";
		
		try {
				inputStream = new FileInputStream(filePath + "\\" + tableName +".xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				
				
				outputStream = new FileOutputStream("C:/Users/qwertyJeong/Desktop/sheetTest/excel"+ tableName +".xlsx");	//만들기
				workbook.write(outputStream);
				outputStream.close();
				
				
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				inputStream.close();
				workbook.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
	}
}

