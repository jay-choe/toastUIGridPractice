package jay.uipractice.dto;


import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class BoardDto {
    private int sequence;
    private String writer;
    private String title;
    private Date createdAt;

}
