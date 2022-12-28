package com.lee.yum.board.service;

import com.lee.yum.board.mapper.BoardMapper;
import com.lee.yum.board.model.BoardDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl  implements  BoardService{

    final BoardMapper mapper;

    public List<BoardDTO> boardList() {
        return mapper.boardList();
    }

    public BoardDTO getBoard(int bNo) {
        return mapper.getBoard(bNo);
    }

    public void insert(BoardDTO dto) {
        mapper.insert(dto);
    }

    public void update(BoardDTO dto) {
        mapper.update(dto);
    }

    public void delete(int bNo) {
        mapper.delete(bNo);
    }
}
