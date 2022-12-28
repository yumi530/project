package com.lee.yum.board.model;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class BoardDTO {

    private Integer bNo;
    private String id;
    private String content;
    private String title;
    private LocalDateTime writeDate;
    private LocalDateTime changeDate;

}
