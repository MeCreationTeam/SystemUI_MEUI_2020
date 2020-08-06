.class Lcom/android/systemui/statusbar/StatusBarPolicy$3;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarPolicy;->isTick:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "notification_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v3, "/system/media/audio/notifications/Heaven.ogg"

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
