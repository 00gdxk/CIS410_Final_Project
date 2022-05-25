using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

public class SimpleTrigger : MonoBehaviour
{

    public Rigidbody triggerBody; 
    public UnityEvent onTriggerEnter;

    public float count = 0;

    void OnTriggerEnter(Collider other){
        //do not trigger if there's no trigger target object
        if (triggerBody == null) return;

        //only trigger if the triggerBody matches
        var hitRb = other.attachedRigidbody;
        if (hitRb == triggerBody){
            onTriggerEnter.Invoke();
            count += 1;
        }
    }

    void EndMenu()
    {
        if (count == 1)
        {
            SceneManager.LoadScene("EndMenu");
        }
    }
}
