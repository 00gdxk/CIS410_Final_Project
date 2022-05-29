using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.InputSystem;
using TMPro;

public class pointscounter : MonoBehaviour
{
    public TextMeshProUGUI countText;
    public AudioSource coinSound;
    public AudioSource barrierSound;
    private int count;

    void Start()
    {
        count = 0;
    }

    void SetCountText()
    {
        countText.text = "Coin: " + count.ToString();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Coin"))
        {
            Destroy(other.gameObject);
            coinSound.Play();

            // Add one to the score variable 'count'
            count = count + 1;

            // Run the 'SetCountText()' function (see below)
            SetCountText();
        }
    }
    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("barrier"))
        {
            //Destroy(other.gameObject);
            barrierSound.Play();

            // minus one to the score variable 'count'
            count = count - 1;

            // Run the 'SetCountText()' function (see below)
            SetCountText();
        }
    }
}
