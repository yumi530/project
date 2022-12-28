package com.lee.yum.member.service;

import com.lee.yum.member.mapper.MemberMapper;
import com.lee.yum.member.model.MemberDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

    final MemberMapper mapper;

    public List<MemberDTO> memberList() {
        return mapper.memberList();
    }

    public MemberDTO memberView(int mNo) {
        return mapper.memberView(mNo);
    }

    public void insert(MemberDTO dto) {
        mapper.insert(dto);
    }

    public void update(MemberDTO dto) {
        mapper.update(dto);
    }

    public void delete(int mNo) {
        mapper.delete(mNo);
    }
}
