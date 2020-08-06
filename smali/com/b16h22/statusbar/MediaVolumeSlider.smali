.class public Lcom/b16h22/statusbar/MediaVolumeSlider;
.super Landroid/widget/LinearLayout;
.source "MediaVolumeSlider.java"


# static fields
.field public static final my_pref:Ljava/lang/String; = "MyPrefsFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 14

    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v12, "img"

    const v13, 0x7f0201a6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x10

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "img"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v7}, Lcom/b16h22/statusbar/MediaVolumeSlider;->addView(Landroid/view/View;)V

    const-string v12, "audio"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    new-instance v11, Landroid/widget/SeekBar;

    invoke-direct {v11, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const-string v12, "MyPrefsFile"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v12, "isChecked"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0, v11}, Lcom/b16h22/statusbar/MediaVolumeSlider;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v6}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v11, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x10

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v12, 0x3f80

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v11, v8}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lcom/b16h22/statusbar/MediaVolumeSlider$1;

    invoke-direct {v12, p0, v0}, Lcom/b16h22/statusbar/MediaVolumeSlider$1;-><init>(Lcom/b16h22/statusbar/MediaVolumeSlider;Landroid/media/AudioManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/b16h22/statusbar/MediaVolumeSlider;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v2, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "isChecked"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v12, Lcom/b16h22/statusbar/MediaVolumeSlider$2;

    invoke-direct {v12, p0, v11, p1}, Lcom/b16h22/statusbar/MediaVolumeSlider$2;-><init>(Lcom/b16h22/statusbar/MediaVolumeSlider;Landroid/widget/SeekBar;Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method
