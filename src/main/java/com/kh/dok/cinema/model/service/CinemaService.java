package com.kh.dok.cinema.model.service;

import java.util.ArrayList;

import com.kh.dok.cinema.model.vo.Cinema;

public interface CinemaService {

		ArrayList<Cinema> selectCinema(Cinema c);

		ArrayList<Cinema> selectCinemaDetail(Cinema ca);

		ArrayList<Cinema> selectCinemaImageCut(Cinema ca);

		ArrayList<Cinema> selectCinemaEa(Cinema ca);
		

}
  