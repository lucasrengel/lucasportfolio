package com.example.cookie;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Random;

public class MainActivity extends AppCompatActivity {
    TextView l;
    ImageView imgCookie;
    int numCookies;
    Button b;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();
        l = findViewById(R.id.textCookie);
        imgCookie = findViewById(R.id.Cookie);
        b = findViewById(R.id.butao);
    }
    public void click(View view) {
        Intent i = new Intent(this, Stick.class);
        startActivity(i);
    }

    public void play(View alface) {
        Toast.makeText(this, "toma cookie", Toast.LENGTH_SHORT).show();
        numCookies = 10;
        Random requeijao = new Random();
        int queijo = requeijao.nextInt(numCookies) + 1;

        ViewGroup.LayoutParams tam = imgCookie.getLayoutParams();
        tam.height = 300;
        tam.width = 300;
        imgCookie.setLayoutParams(tam);

            if (queijo == 1) {
                imgCookie.setImageResource(R.drawable.cookie1);
            } else if (queijo == 2) {
                imgCookie.setImageResource(R.drawable.cookie_2);
            } else if (queijo == 3) {
                imgCookie.setImageResource(R.drawable.cookie4);
            } else if (queijo == 4) {
                imgCookie.setImageResource(R.drawable.cookie5);
            } else if (queijo == 5) {
                imgCookie.setImageResource(R.drawable.cookie6);
            } else if (queijo == 6) {
                imgCookie.setImageResource(R.drawable.cookie7);
            } else if (queijo == 7) {
                imgCookie.setImageResource(R.drawable.cookie8);
            } else if (queijo == 8) {
                imgCookie.setImageResource(R.drawable.cookie9);
            } else if (queijo == 9) {
                imgCookie.setImageResource(R.drawable.cookie10);
            } else if (queijo == 10) {
            }
        }
    }
