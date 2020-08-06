.class Lcom/b16h22/statusbar/RingerVolumeSlider$1;
.super Ljava/lang/Object;
.source "RingerVolumeSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/RingerVolumeSlider;Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$1;->this$0:Lcom/b16h22/statusbar/RingerVolumeSlider;

    iput-object p2, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$1;->val$audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v1, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$1;->val$audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b16h22/statusbar/RingerVolumeSlider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
