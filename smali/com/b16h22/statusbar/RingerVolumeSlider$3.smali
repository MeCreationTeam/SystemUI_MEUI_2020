.class Lcom/b16h22/statusbar/RingerVolumeSlider$3;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumeSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/RingerVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/RingerVolumeSlider;

.field private final synthetic val$audioManager:Landroid/media/AudioManager;

.field private final synthetic val$volControl:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/RingerVolumeSlider;Landroid/media/AudioManager;Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$3;->this$0:Lcom/b16h22/statusbar/RingerVolumeSlider;

    iput-object p2, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$3;->val$audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$3;->val$volControl:Landroid/widget/SeekBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$3;->val$audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$3;->val$volControl:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
