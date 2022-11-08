package com.kh.dok.admin.model.dao;


import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.exception.UploadException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.admin.model.vo.VisitHistory;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

@Repository
public class AdminDaoImpl implements AdminDao{

	//전체 회원 조회 메소드
	@Override
	public ArrayList<Member> searchAll(SqlSessionTemplate sqlSession,PageInfo pi,SearchCondition sc) throws MemberSelectListException {

		int offset = (pi.getCurrentPage()-1)* pi.getLimit();

		RowBounds rowBound = new RowBounds(offset, pi.getLimit());

		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchAll",sc, rowBound);

		if(mlist == null ){
			throw new MemberSelectListException("전체 회원 조회 실패");
		}
		return mlist;
	}

	//일반 회원 조회 메소드
	@Override
	public ArrayList<Member> searchBu(SqlSessionTemplate sqlSession,PageInfo pi,SearchCondition sc) throws MemberSelectListException {

		int offset = (pi.getCurrentPage()-1) * pi.getLimit();

		RowBounds rowBound = new RowBounds(offset,pi.getLimit());

		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchBu",sc,rowBound);

		if(mlist == null ){
			throw new MemberSelectListException("일반 회원 조회 실패");
		}

		return mlist;
	}

	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(SqlSessionTemplate sqlSession,PageInfo pi,SearchCondition sc) throws MemberSelectListException {

		int offset = (pi.getCurrentPage()-1) * pi.getLimit();

		RowBounds rowBound = new RowBounds(offset,pi.getLimit());

		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchSe",sc,rowBound);

		if( mlist == null ){
			throw new MemberSelectListException("판매자 회원 조회 실패");
		}

		return mlist;
	}

	//전체 회원 조회  카운트 메소드
	@Override
	public int countAll(SqlSessionTemplate sqlSession, SearchCondition sc) throws MemberSelectListException {
		System.out.println(sc);

		int countAll = sqlSession.selectOne("Admin.countAll",sc);

		if(countAll<0){
			throw new MemberSelectListException("전체 회원 카운트 실패");
		}
		return countAll;
	}

	//일반 회원  조회 카운트 메소드
	@Override
	public int countBu(SqlSessionTemplate sqlSession,SearchCondition sc) throws MemberSelectListException {

		int countBu = sqlSession.selectOne("Admin.countBu",sc);

		if(countBu<0){
			throw new MemberSelectListException("일반 회원 카운트 실패");
		}
		return countBu;
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe(SqlSessionTemplate sqlSession,SearchCondition sc) throws MemberSelectListException {

		int countSe = sqlSession.selectOne("Admin.countSe",sc);

		if(countSe<0){
			throw new MemberSelectListException("판매자 회원 카운트 실패");
		}
		return countSe;
	}

	//블랙리스트 회원 조회 카운트 메소드
	@Override
	public int countBl(SqlSessionTemplate sqlSession,SearchCondition sc) throws BlackMemberSelectListException {

		int countBl = sqlSession.selectOne("Admin.countBl",sc);

		if(countBl < 0){
			throw new BlackMemberSelectListException("블랙리스트 회원 카운트 실패");
		}
		return countBl;
	}

	//블랙리스트 회원 조회 메소드
	@Override
	public ArrayList<ReportHistory> searchBlack(SqlSessionTemplate sqlSession, PageInfo pi,SearchCondition sc) throws BlackMemberSelectListException {

		int offset = (pi.getCurrentPage()-1)*pi.getLimit();

		RowBounds rowBound = new RowBounds(offset,pi.getLimit());

		ArrayList<ReportHistory> blist = (ArrayList)sqlSession.selectList("Admin.searchBlack",sc,rowBound); 
		if( blist == null){
			throw new BlackMemberSelectListException("블랙리스트 회원 조회 실패");
		}

		return blist;
	}

	@Override
	public int insertFile(SqlSessionTemplate sqlSession, BoardFile adFile) throws UploadException {
		int insert = sqlSession.insert("Admin.insertFile", adFile);

		if(insert < 1){
			throw new UploadException("메인 슬라이드 업로드 실패");
		}

		return insert;
	}

	@Override
	public int updateFile(SqlSessionTemplate sqlSession,BoardFile adFile){
		int update = sqlSession.update("Admin.updateFile",adFile);


		return update;
	}

	//슬라이드 사진 파일 삭제용 메소드
	@Override
	public int deleteFile(SqlSessionTemplate sqlSession){
		int delete = sqlSession.delete("Admin.deleteFile");


		return delete;
	}

	//슬라이드 사진 select 메소드
	@Override
	public ArrayList<BoardFile> selectFile(SqlSessionTemplate sqlSession) throws UploadException {
		ArrayList<BoardFile> bf = (ArrayList)sqlSession.selectList("Admin.selectFile");


		return bf;
	}

	@Override
	public int insertVisit(SqlSessionTemplate sqlSession, String time, String ip) {

		ArrayList<VisitHistory> vl = (ArrayList)sqlSession.selectList("Admin.selectVisitList");
		System.out.println("vl은 : "+vl);
		System.out.println(vl.size());
		if(vl.size() > 0){
			Date t = new Date(0);
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			long ltime = Long.parseLong(time);
			t.setTime(ltime);	//받아온 시간
			VisitHistory vs = new VisitHistory(ip,0,t);
			System.out.println(vs);
			int com = sqlSession.selectOne("Admin.selectVisit", vs);
			Date lastTime = vl.get(vl.size()-1).getVisit_time();
			String tempDate = sf.format(lastTime);				//마지막 행의 시간
			String originTempDate = sf.format(t);
			if(tempDate.equals(originTempDate) && com < 1){
				sqlSession.insert("Admin.insertVisit", vs);
			}else if(!tempDate.equals(originTempDate) && com < 1){
				int dVisit = sqlSession.delete("Admin.deleteVisit",lastTime);
				/*String dVisitStr = String.valueOf(dVisit)+" "+tempDate;*/
				VisitHistory nvs = new VisitHistory(dVisit,lastTime);
				VisitHistory newvs = new VisitHistory(ip,0,t);
				sqlSession.insert("Admin.insertVcount",nvs);
				sqlSession.insert("Admin.insertVisit",newvs);
			}
		}else if(vl.size() == 0){
			Date t = new Date(0);
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			long ltime = Long.parseLong(time);
			t.setTime(ltime);
			VisitHistory vs = new VisitHistory(ip,0,t);
			sqlSession.insert("Admin.insertVisit", vs);
		}

		return 1;
	}

	@Override
	public int[] countVisit(SqlSessionTemplate sqlSession,String time) {
		int [] vlist = {0,0,0,0,0,0,0,0,0,0,0,0};

		for(int i=1;i<13;i++){

			Map vcount = new HashMap();
			int countAll = 0;
			vcount.put("count", i);
			List<Integer> counti = (ArrayList)sqlSession.selectList("Admin.countVisit",vcount);
			System.out.println("i는"+i+"이고 counti의 사이즈는 ?" + counti.size());
			System.out.println(counti);
			if(counti.size()!=0){
				for(int c : counti){
					countAll += c;
				}
				System.out.println(countAll);
			}
			vlist[i-1] = countAll;
		}
		return vlist;
	}

	@Override
	public int[] countMember(SqlSessionTemplate sqlSession) {
		int [] mlist = {0,0,0,0,0,0,0,0,0,0,0,0};

		for(int i=1; i< 13; i++){

			Map mcount = new HashMap();
			int countAll = 0;
			mcount.put("countm",i);
			int countm = sqlSession.selectOne("Admin.countMember",mcount);
			
			mlist[i-1] = countm;
			System.out.println(mlist[i-1]);
		}
		return mlist;
	}

	@Override
	public int[] countClass(SqlSessionTemplate sqlSession) {
		int [] clist = {0,0};

		int countb = sqlSession.selectOne("Admin.countB");
		int counts = sqlSession.selectOne("Admin.countS");

		clist[0] = countb;
		clist[1] = counts;

		return clist;
	}
	
	//예매수 카운트
	@Override
	public int[] countBook(SqlSessionTemplate sqlSession) {
		int [] blist = {0,0,0,0,0,0,0,0,0,0,0,0};

		for(int i=1; i< 13; i++){

			Map bcount = new HashMap();

			bcount.put("countb",i);
			int countb = sqlSession.selectOne("Admin.countBook",bcount);
			blist[i-1] = countb;
			
		}

		return blist;

	}


}
