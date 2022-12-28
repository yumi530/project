package com.lee.yum.mapper;

import com.lee.yum.board.mapper.BoardMapper;
import com.lee.yum.board.model.BoardDTO;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BoardMapperTest {

@Autowired
public BoardMapper mapper;

    @Test
    public void boardList() {
        List<BoardDTO> list = mapper.boardList();
        System.out.println(list);
        /*assertEquals(1, list.size());*/
    }
}