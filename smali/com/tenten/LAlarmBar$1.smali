.class Lcom/tenten/LAlarmBar$1;
.super Landroid/content/BroadcastReceiver;
.source "LAlarmBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LAlarmBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LAlarmBar;


# direct methods
.method constructor <init>(Lcom/tenten/LAlarmBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LAlarmBar$1;->this$0:Lcom/tenten/LAlarmBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tenten/LAlarmBar$1;->this$0:Lcom/tenten/LAlarmBar;

    const-string v2, "alarmSet"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tenten/LAlarmBar;->alarmSet:Z

    iget-object v1, p0, Lcom/tenten/LAlarmBar$1;->this$0:Lcom/tenten/LAlarmBar;

    iget-boolean v1, v1, Lcom/tenten/LAlarmBar;->alarmSet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tenten/LAlarmBar$1;->this$0:Lcom/tenten/LAlarmBar;

    invoke-virtual {v1, v0}, Lcom/tenten/LAlarmBar;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alarming"

    iget-object v3, p0, Lcom/tenten/LAlarmBar$1;->this$0:Lcom/tenten/LAlarmBar;

    iget-boolean v3, v3, Lcom/tenten/LAlarmBar;->alarmSet:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tenten/LAlarmBar$1;->this$0:Lcom/tenten/LAlarmBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tenten/LAlarmBar;->setVisibility(I)V

    goto :goto_0
.end method
