package com.lee.yum.board.service;

import com.lee.yum.board.model.BoardDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BoardService {

    List<BoardDTO> boardList();

    BoardDTO getBoard(int bNo);

    void insert(BoardDTO dto);

    void update(BoardDTO dto);

    void delete(int bNo);
}
