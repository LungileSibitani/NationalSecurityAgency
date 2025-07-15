/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author LUMGILE
 */
@Local
public interface AgentFacadeLocal {

    void create(Agent agent);

    void edit(Agent agent);

    void remove(Agent agent);

    Agent find(Object id);

    List<Agent> findAll();

    List<Agent> findRange(int[] range);
    String encryptPlainTextToCipherText(String message);
    String decryptCipherToNormaltext(String cypherText);
    Byte getLongestMessage();
    
    int count();
    
}
