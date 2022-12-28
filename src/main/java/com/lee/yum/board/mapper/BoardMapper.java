package com.lee.yum.board.mapper;

import com.lee.yum.board.model.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    List<BoardDTO> boardList();

    BoardDTO getBoard(int bNo);

    void insert(BoardDTO dto);

    void update(BoardDTO dto);

    void delete(int bNo);
}
