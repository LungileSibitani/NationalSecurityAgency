/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author LUMGILE
 */
@Stateless
public class AgentFacade extends AbstractFacade<Agent> implements AgentFacadeLocal {

    @PersistenceContext(unitName = "NationalSecurityAgencyEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AgentFacade() {
        super(Agent.class);
    }

    @Override
    public String encryptPlainTextToCipherText(String message) {
        String cypherText = "";
      message= message.toLowerCase();
        for(int i =0;i< message.length(); i++){
            char c  = message.charAt(i);
            
            switch (c) {
                case 'a':
                    cypherText+='1';
                    break;
                    case 'e':
                    cypherText+='2';
                    break;
                    case 'i':
                    cypherText+='3';
                    break;
                    case 'o':
                    cypherText+='4';
                    break;
                    case 'u':
                    cypherText+='5';
                    break;
                default:
                    cypherText+=c;
            }
        }
        
        return  cypherText;
    }

    @Override
    public String decryptCipherToNormaltext(String cypherText) {
       
        String decryptedText="";
       
        for (int i = 0; i < cypherText.length(); i++) {
            char c = cypherText.charAt(i);
            
            switch (c) {
                case '1':
                decryptedText+='a';    
                    break;
                     case '2':
                decryptedText+='e';    
                    break;
                     case '3':
                decryptedText+='i';    
                    break;
                     case '4':
                decryptedText+='o';    
                    break;
                     case '5':
                decryptedText+='u';    
                    break;
                default:
                    decryptedText+=c;
            }
            
        }
        return decryptedText;
    }

    @Override
    public Byte getLongestMessage() {
           Query q = em.createQuery("SELECT MAX(a.lengthOfMessage) FROM Agent a");
           Number longest = (Number) q.getSingleResult();
           return longest.byteValue();
    }
    
}
