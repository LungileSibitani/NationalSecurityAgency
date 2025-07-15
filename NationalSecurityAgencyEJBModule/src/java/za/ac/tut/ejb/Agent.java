/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;

/**
 *
 * @author LUMGILE
 */
@Entity
public class Agent implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Integer idCode;
    private String name;
    private Byte lengthOfMessage;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationDate ;
    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(name = "cipher_message_tbl")
    @Column(name = "cypher")
    private List<String> cypherText = new ArrayList<>();
    public Agent() {
    }

    public Agent(Integer idCode, List<String> cypherText,String name, Byte lengthOfMessage, Date creationDate) {
        this.idCode = idCode;
        this.cypherText = cypherText;
        this.lengthOfMessage = lengthOfMessage;
        this.creationDate = creationDate;
        this.name= name;
    }

   
    public Integer getIdCode() {
        return idCode;
    }

    public void setIdCode(Integer idCode) {
        this.idCode = idCode;
    }

    public List<String> getCypherText() {
        return cypherText;
    }

    public void setCypherText(List<String> cypherText) {
        this.cypherText = cypherText;
    }

   

    public Byte getLengthOfMessage() {
        return lengthOfMessage;
    }

    public void setLengthOfMessage(Byte lengthOfMessage) {
        this.lengthOfMessage = lengthOfMessage;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Agent)) {
            return false;
        }
        Agent other = (Agent) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.ejb.Agent[ id=" + id + " ]";
    }
    
}
