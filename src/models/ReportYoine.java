package models;

import java.sql.Date;

public class ReportYoine {
     private Integer id;
     private Employee employee;
     private Date report_date;
     private String content;
     private String title;
     private Long yoineCount;

     public Integer getId(){
         return id;
     }

     public void setId(Integer id){
         this.id = id;
     }

     public Employee getEmployee(){
         return employee;
     }

     public void setEmployee(Employee employee){
         this.employee = employee;
     }

     public Date getReport_date(){
         return report_date;
     }

     public void setReport_date(Date report_date){
         this.report_date = report_date;
     }

     public String getTitle(){
         return title;
     }

     public void setTitle(String title){
         this.title = title;
     }

     public String getContent(){
         return content;
     }

     public void SetContent(String content){
         this.content = content;
     }

    public Long getYoineCount(){
        return yoineCount;
    }
    public void setYoineCount(Long yoineCount){
        this.yoineCount = yoineCount;
    }
}
