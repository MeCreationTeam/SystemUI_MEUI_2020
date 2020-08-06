.class Lcom/b16h22/statusbar/SystemVolumeSlider$1;
.super Ljava/lang/Object;
.source "SystemVolumeSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/SystemVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/SystemVolumeSlider;

.field private final synthetic val$audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/SystemVolumeSlider;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$1;->this$0:Lcom/b16h22/statusbar/SystemVolumeSlider;

    iput-object p2, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$1;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/b16h22/statusbar/SystemVolumeSlider$1;->val$audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

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
