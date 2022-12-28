package com.lee.yum.board.controller;

import com.lee.yum.board.service.BoardService;
import com.lee.yum.board.model.BoardDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class BoardController {

    final BoardService service;

    @GetMapping("/list")
    public String boardList(Model model){
        List<BoardDTO> list = service.boardList();
        model.addAttribute("list", list);
        return "board/list";
    }

    @GetMapping("/get")
    public String read(Integer bNo, Model model){
        BoardDTO read = service.getBoard(bNo);
        model.addAttribute("read", read);
        return "board/read";
    }

    @GetMapping("/register")
    public String insert(){
      return "board/write";
    }

    @PostMapping("/register")
    public String insertBoard(BoardDTO dto){
        service.insert(dto);
        return "redirect:/board/list";
    }

    @GetMapping("/modify")
    public  ModelAndView  update(Integer bNo, Model model){
        BoardDTO read = service.getBoard(bNo);
        ModelAndView mav = new ModelAndView();
        mav.addObject("read", read);
        mav.setViewName("/board/modify");
        return mav;
    }

    @PostMapping("/modify")
    public String updateBoard(BoardDTO dto, RedirectAttributes rtts){
        service.update(dto);
        return "redirect:/board/list";
    }

    @PostMapping("/delete")
    public String deleteBoard(Integer bNo, RedirectAttributes rtts){
        service.delete(bNo);
        return "redirect:/board/list";
    }


}
