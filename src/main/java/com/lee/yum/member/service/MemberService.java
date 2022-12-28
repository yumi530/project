package com.lee.yum.member.service;

import com.lee.yum.member.model.MemberDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MemberService {

    List<MemberDTO> memberList();

    MemberDTO memberView(int mNo);

    void insert(MemberDTO dto);

    void update(MemberDTO dto);

    void delete(int mNo);
}
