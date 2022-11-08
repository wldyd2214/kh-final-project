package com.kh.dok.licensee.test.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;



public class cellClass {

	/*//셀 값 읽기 15x15
	public String[][] test(String name) {

		XSSFRow row;
		XSSFCell cell;
		int type;
		String[][] num = new String[15][15]; 
		
		try {

			FileInputStream inputStream = new FileInputStream("C:/Users/John/Desktop/copy"+ name +".xlsx");
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
	
	
	//테이블 생성
	public void createTeble(String[] arr, String name){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;
		try {
				inputStream = new FileInputStream("C:/Users/John/Desktop/TestBox.xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				XSSFSheet sheet = workbook.getSheetAt(0);	//Class Data 시트
				
				for(String num : arr){
					int n =Integer.parseInt(num)-1;
					int row = n/15;
					int col = n%15;
					sheet.getRow(row).getCell(col).setCellValue("O");	//값 넣기
				}
				outputStream = new FileOutputStream("C:/Users/John/Desktop/copy"+ name +".xlsx");	//만들기
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
	public void insertCell(String[] arr, String name, String tableName){

		FileInputStream inputStream = null;
		FileOutputStream outputStream = null;
		XSSFWorkbook workbook = null;
		try {
				inputStream = new FileInputStream("C:/Users/John/Desktop/copy"+tableName+".xlsx");
				workbook = new XSSFWorkbook(inputStream);
				
				XSSFSheet sheet = workbook.getSheetAt(0);	//Class Data 시트
				
				for(String num : arr){
					int n =Integer.parseInt(num)-1;
					int row = n/15;
					int col = n%15;
					sheet.getRow(row).getCell(col).setCellValue(String.valueOf(name));	//값 넣기
				}
				outputStream = new FileOutputStream("C:/Users/John/Desktop/copy"+ tableName +".xlsx");	//만들기
				workbook.write(outputStream);
				outputStream.close();
				
				System.out.println(name+" 사용자가 구매한 면적 갯수 :"+ arr.length);
				
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
	}*/
	
	
}

