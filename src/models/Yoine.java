package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Table(name = "yoines",
       uniqueConstraints = {@UniqueConstraint(columnNames =
   {"employee_id", "report_id"})
       }
        )
@NamedQueries({
    @NamedQuery(
            name = "getAllYoines", //全てのいいね情報を取得
            query = "SELECT y FROM Yoine AS y ORDER BY y.id DESC"
            ),
    @NamedQuery(
            name = "getYoineCount", //いいねの情報の全件数を取得　
            //いいねのカウントに必要？　全件ではなくいいねされたrepのみカウントsするべき
            query = "SELECT COUNT(y) FROM Yoine AS y"
            ),
    @NamedQuery(
            name = "getLimitedYoineCount",
            query = "SELECT COUNT(y) FROM Yoine AS y WHERE y.report = :report"
            //Whereのあとのy.reportはEntityのprivate Report 「report」
            //L14 6　”getMyReportsCountを参照
            ),
    @NamedQuery(
            name = "checkRegisteredYoine", //指定された社員idと日報idが既にDBに存在しているか調べる
            query = "SELECT COUNT(y) FROM Yoine AS y WHERE y.employee = :employee_id AND y.report = :report_id"
            )
})

@Entity
public class Yoine {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name ="employee_id" , nullable =false)
    private Employee employee;

    @ManyToOne
    @JoinColumn(name ="report_id" , nullable =false)
    private Report report;

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

    public Report getReport(){
        return report;
    }

    public void setReport(Report report){
        this.report = report;
    }
}
