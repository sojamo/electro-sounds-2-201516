import ddf.minim.AudioInput;
import ddf.minim.Minim;
import ddf.minim.analysis.*;
import java.util.*;


class SoundInput {

  Minim minim;
  FFT fft;
  AudioInput in;

  List<Float> average = new ArrayList<Float>(Collections.nCopies(8, 0.0));
  int len;
  float[] spectrum;

  SoundInput() {
    minim = new Minim(this);
    in = minim.getLineIn( );
    fft = new FFT( in.bufferSize( ), in.sampleRate( ) );
    fft.window( FFT.GAUSS );
    for (int i=1; i<512; i++) {
      println(i, ((i/1024.0) * 44100.0), "Hz");
    }
    len = in.bufferSize()/2;
    spectrum = new float[len];
  }



  public void update() {
    fft.forward(in.mix);
    average.set(0, fft.calcAvg(0, 100));
    average.set(1, fft.calcAvg(100, 200)*0.5);
    average.set(2, fft.calcAvg(200, 400)*0.5);
    average.set(3, fft.calcAvg(400, 800));
    average.set(4, fft.calcAvg(800, 2000));
    average.set(5, fft.calcAvg(2000, 4000));
    average.set(6, fft.calcAvg(4000, 8000)*4);
    average.set(7, fft.calcAvg(8000, 16000)*4);
    int i = 0;
    for (; i<len; i++) {
      spectrum[i] = fft.getBand(i);
    }
  }
}