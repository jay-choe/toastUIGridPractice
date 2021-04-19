package jay.uipractice.controller;

import jay.uipractice.dto.BoardDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class SimpleController {

    @GetMapping
    public String main(){
        return "main";
    }

    @GetMapping("/data")
    @ResponseBody
    public List<BoardDto> simpleData(){
        List<BoardDto> boardList = new ArrayList<>();
        boardList.add(new BoardDto(0, "Jay", "Test", new Date()));

        return boardList;
    }
}
