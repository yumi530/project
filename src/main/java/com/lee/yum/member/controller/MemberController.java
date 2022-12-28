package com.lee.yum.member.controller;

import com.lee.yum.member.model.MemberDTO;
import com.lee.yum.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {

    final MemberService service;

    @GetMapping("/list")
    public String memberList(Model model){
        List<MemberDTO> memberList = service.memberList();
        model.addAttribute("list", memberList);
        return "member/list";
    }

    @GetMapping("/view")
    public String memberView(int mNo, Model model){
        MemberDTO get = service.memberView(mNo);
        model.addAttribute("view", get);
        return "member/view";
    }

    @GetMapping("/insert")
    public String insert(){
        return "member/insert";
    }

    @PostMapping("/register")
    public String register(MemberDTO dto, RedirectAttributes rtts){
      service.insert(dto);
        return "redirect:/member/list";
    }

    @GetMapping("/update")
    public String update(int mNo, Model model){
        MemberDTO dto  = service.memberView(mNo);
        model.addAttribute("dto", dto);
        return "member/update";
    }

    @PostMapping("/modify")
    public String modify(MemberDTO dto){
        service.update(dto);
        return "redirect:/member/list";
    }

    @PostMapping("/delete")
    public String delete(int mNo){
        service.delete(mNo);
        return "redirect:/member/list";
    }
}
