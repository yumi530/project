package com.lee.yum.member.mapper;

import com.lee.yum.member.model.MemberDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Mapper
public interface MemberMapper {

    List<MemberDTO> memberList();

    MemberDTO memberView(int mNo);

    void insert(MemberDTO dto);

    void update(MemberDTO dto);

    void delete(int mNo);

}
