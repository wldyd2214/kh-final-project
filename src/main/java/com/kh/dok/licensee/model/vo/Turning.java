package com.kh.dok.licensee.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Turning implements java.io.Serializable{
     
   private String turningId;
   private String playId;
   private int price;
   private String turningDay;
   private String turningTime;
   private Date startTime;
   private Date endTime;
   private String movieRoomId;
   private String MovieRoomName;
   
   //조건 필요한 친구들
   private String startTime_pre;
   private String endTime_pre;
   
   public Turning(){}

   public String getTurningId() {
      return turningId;
   }

   public void setTurningId(String turningId) {
      this.turningId = turningId;
   }

   public String getPlayId() {
      return playId;
   }

   public void setPlayId(String playId) {
      this.playId = playId;
   }

   public int getPrice() {
      return price;
   }

   public void setPrice(int price) {
      this.price = price;
   }


   public String getTurningTime() {
      return turningTime;
   }

   public void setTurningTime(String turningTime) {
      this.turningTime = turningTime;
   }

   public Date getStartTime() {
      return startTime;
   }

   public void setStartTime(Date startTime) {
      this.startTime = startTime;
   }

   public Date getEndTime() {
      return endTime;
   }

   public void setEndTime(Date endTime) {
      this.endTime = endTime;
   }

   public String getMovieRoomId() {
      return movieRoomId;
   }

   public void setMovieRoomId(String movieRoomId) {
      this.movieRoomId = movieRoomId;
   }

   public String getStartTime_pre() {
      return startTime_pre;
   }

   public void setStartTime_pre(String startTime_pre) {
      this.startTime_pre = startTime_pre;
   }

   public String getEndTime_pre() {
      return endTime_pre;
   }

   public void setEndTime_pre(String endTime_pre) {
      this.endTime_pre = endTime_pre;
   }

   
   public String getMovieRoomName() {
      return MovieRoomName;
   }

   public void setMovieRoomName(String movieRoomName) {
      MovieRoomName = movieRoomName;
   }

   public String getTurningDay() {
      return turningDay;
   }

   public void setTurningDay(String turningDay) {
      this.turningDay = turningDay;
   }

   public Turning(String turningId, String playId, int price, String turningDay, String turningTime, Date startTime,
         Date endTime, String movieRoomId, String movieRoomName, String startTime_pre, String endTime_pre) {
      super();
      this.turningId = turningId;
      this.playId = playId;
      this.price = price;
      this.turningDay = turningDay;
      this.turningTime = turningTime;
      this.startTime = startTime;
      this.endTime = endTime;
      this.movieRoomId = movieRoomId;
      MovieRoomName = movieRoomName;
      this.startTime_pre = startTime_pre;
      this.endTime_pre = endTime_pre;
   }

   @Override
   public String toString() {
      return "Turning [turningId=" + turningId + ", playId=" + playId + ", price=" + price + ", turningDay="
            + turningDay + ", turningTime=" + turningTime + ", startTime=" + startTime + ", endTime=" + endTime
            + ", movieRoomId=" + movieRoomId + ", MovieRoomName=" + MovieRoomName + ", startTime_pre="
            + startTime_pre + ", endTime_pre=" + endTime_pre + "]";
   }


   
   
   
   
   
}