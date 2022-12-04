package com.example.battery_level_task;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

import android.os.Bundle;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;

import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;


public class MainActivity extends FlutterActivity {
    
      @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
  super.configureFlutterEngine(flutterEngine);
    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger() , "com.flutter.battery_level_task").setMethodCallHandler(
        new MethodCallHandler(){
            @Override
            public void onMethodCall(MethodCall call , Result result){
                if(call.method.equals("getAndFetchBatteryLevel")){
                    int batteryLevel = getBatteryLevel();
                    if(batteryLevel != -1 ){
                        result.success(batteryLevel);
                    }else{
                        result.error("UNAVAILABLE" , "couldNotFetch" , null);
                    }
                } else{
                    result.notImplemented();
                }
            }
        }
    );
  }

private int getBatteryLevel(){
    int batteryLevel = -1;
                if(VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP){
                    //The Below Code Brings The Battery Level
                    BatteryManager batteryManager = (BatteryManager) getSystemService(BATTERY_SERVICE);
                    batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
                } else {
                    Intent intent = new ContextWrapper(getApplicationContext()).registerReceiver(null , new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
                    batteryLevel = (intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100) / intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
                }
    return batteryLevel;
}
    
}
