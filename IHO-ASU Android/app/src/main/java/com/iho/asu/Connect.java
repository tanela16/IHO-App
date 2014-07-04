package com.iho.asu;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


public class Connect extends Fragment{

    public int resource;

    public Connect(){};
    public Connect(int resource){
        this.resource = resource;
    }
    @Override
    public View onCreateView(LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(
                resource, container, false);
    }

    @Override
    public void onStart(){
        super.onStart();
    }

}