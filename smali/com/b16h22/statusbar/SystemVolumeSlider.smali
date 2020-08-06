.class public Lcom/b16h22/statusbar/SystemVolumeSlider;
.super Landroid/widget/LinearLayout;
.source "SystemVolumeSlider.java"


# static fields
.field public static final my_pref:Ljava/lang/String; = "MyPrefsFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v15, "img"

    const v16, 0x7f0201a9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x10

    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "img"

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/b16h22/statusbar/SystemVolumeSlider;->addView(Landroid/view/View;)V

    const-string v15, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v9

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    new-instance v14, Landroid/widget/SeekBar;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const-string v15, "MyPrefsFile"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v15, "isChecked2"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/b16h22/statusbar/SystemVolumeSlider;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v9}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v14, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x10

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v15, 0x3f80

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v14, v11}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lcom/b16h22/statusbar/SystemVolumeSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/b16h22/statusbar/SystemVolumeSlider$1;-><init>(Lcom/b16h22/statusbar/SystemVolumeSlider;Landroid/media/AudioManager;)V

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/b16h22/statusbar/SystemVolumeSlider;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "isChecked2"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v15, Lcom/b16h22/statusbar/SystemVolumeSlider$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v14, v1}, Lcom/b16h22/statusbar/SystemVolumeSlider$2;-><init>(Lcom/b16h22/statusbar/SystemVolumeSlider;Landroid/widget/SeekBar;Landroid/content/Context;)V

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v7, Lcom/b16h22/statusbar/SystemVolumeSlider$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2, v14}, Lcom/b16h22/statusbar/SystemVolumeSlider$3;-><init>(Lcom/b16h22/statusbar/SystemVolumeSlider;Landroid/media/AudioManager;Landroid/widget/SeekBar;)V

    new-instance v15, Landroid/content/IntentFilter;

    const-string v16, "android.media.RINGER_MODE_CHANGED"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v15, Landroid/content/IntentFilter;

    const-string v16, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method
