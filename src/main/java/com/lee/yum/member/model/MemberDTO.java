package com.lee.yum.member.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
public class MemberDTO {

    private Integer mNo;
    private String id;
    private String pw;
    private String userName;
    private String email;
    private LocalDateTime joinDate;
    private LocalDateTime changeDate;
}
