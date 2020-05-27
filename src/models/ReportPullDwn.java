package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "pulldown")

@Entity
public class ReportPullDwn {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "satisfy", nullable = true)
    private Integer satisfy;

    @Column(name = "accomplishment", nullable = true)
    private Integer accomplishment;

    public Integer getAccomplishment(){
        return accomplishment;
    }

    public void setAccomplishment(Integer accomplishment){
       this.accomplishment = accomplishment;
    }
}
