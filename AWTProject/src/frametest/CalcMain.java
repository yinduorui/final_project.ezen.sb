package frametest;

import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Panel;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CalcMain implements ActionListener {
   Frame f;
   TextField tf;
   Button[] bNum;
   Button btnPlus, btnMinus, btnMul, btnDiv, btnRes;
   boolean bPlus, bMinus, bMul, bDiv;
   int number;

   public CalcMain() {
      number = 0;
      bPlus = bMinus = bMul = bDiv = false;

      f = new Frame("Calculator");
      f.setSize(600, 500);
      f.setLocation(1250, 150);

      tf = new TextField("0");
      tf.setEditable(false);
      tf.setFocusable(false);

      Panel pNum = new Panel();
      pNum.setBackground(Color.PINK);
      pNum.setLayout(new GridLayout(3, 0));

      bNum = new Button[10];
      for (int i = 0; i < bNum.length; i++) {
         bNum[i] = new Button(i + "");
         bNum[i].addActionListener(this);
         pNum.add(bNum[i]);
      }

      Panel pSymbol = new Panel();
      pSymbol.setBackground(Color.BLUE);
      pSymbol.setLayout(new GridLayout(5, 0));
      btnPlus = new Button("+");
      btnMinus = new Button("-");
      btnMul = new Button("*");
      btnDiv = new Button("/");
      btnRes = new Button("=");
      pSymbol.add(btnPlus);
      pSymbol.add(btnMinus);
      pSymbol.add(btnMul);
      pSymbol.add(btnDiv);
      pSymbol.add(btnRes);
      btnPlus.addActionListener(this);
      btnMinus.addActionListener(this);
      btnMul.addActionListener(this);
      btnDiv.addActionListener(this);
      btnRes.addActionListener(this);

      f.add(tf, "North");
      f.add(pNum, "Center");
      f.add(pSymbol, "East");
      f.setVisible(true);
   }

   public static void main(String[] args) {
      CalcMain cm = new CalcMain();
   }

   @Override
   public void actionPerformed(ActionEvent e) {
      for (int i = 0; i < 10; i++) {
         String str = String.valueOf(i);
         if (e.getActionCommand().equals(str)) {
            if (tf.getText().equals("0")) {
               tf.setText(str);
            } else {
               tf.setText(tf.getText() + str);
            }
         }
      }

      if (e.getActionCommand().equals("+")) {
         bPlus = true;
         number = Integer.parseInt(tf.getText());
         tf.setText("0");
      }
      if (e.getActionCommand().equals("-")) {
         bMinus = true;
         number = Integer.parseInt(tf.getText());
         tf.setText("0");
      }
      if (e.getActionCommand().equals("*")) {
         bMul = true;
         number = Integer.parseInt(tf.getText());
         tf.setText("0");
      }
      if (e.getActionCommand().equals("/")) {
         bDiv = true;
         number = Integer.parseInt(tf.getText());
         tf.setText("0");
      }
      if (e.getActionCommand().equals("=")) {
         if (bPlus == true) {
            int result = number + Integer.parseInt(tf.getText());
            tf.setText(String.valueOf(result));
         }
         if (bMinus == true) {
            int result = number - Integer.parseInt(tf.getText());
            tf.setText(String.valueOf(result));
         }
         if (bMul == true) {
            int result = number * Integer.parseInt(tf.getText());
            tf.setText(String.valueOf(result));
         }
         if (bDiv == true) {
            int result = number / Integer.parseInt(tf.getText());
            tf.setText(String.valueOf(result));
         }
         number = 0;
         bPlus = bMinus = bMul = bDiv = false;
      }
   }
}