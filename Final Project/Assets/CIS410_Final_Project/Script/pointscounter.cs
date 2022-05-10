using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;

public class pointscounter : MonoBehaviour
{
    public TextMeshProUGUI countText;
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

            // Add one to the score variable 'count'
            count = count + 1;

            // Run the 'SetCountText()' function (see below)
            SetCountText();
        }
    }
}
