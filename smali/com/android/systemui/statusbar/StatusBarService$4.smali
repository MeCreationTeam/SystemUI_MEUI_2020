.class Lcom/android/systemui/statusbar/StatusBarService$4;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "phone_id"

    const-string v3, "CarrierLabel"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v0, "ACTION_STATUSBAR_BACKGROUD_NOT_BLACK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    :cond_0
    const-string v0, "ACTION_STATUSBAR_BACKGROUD_BLACK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    :cond_1
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->expanded:Lcom/android/systemui/statusbar/ExpandedView;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_5
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "phone_id"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "network_type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "CarrierLabel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IccCard is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone_id"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "ABSENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimMissed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const v1, 0x10402f3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateForSimCardChanged(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "LOCKED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "CarrierLabel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lockedReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PIN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimBlocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const v1, 0x10402fb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateForSimCardChanged(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "NETWORK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mNetworkLocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const v1, 0x10402ce

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateForSimCardChanged(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "SIM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mCardLocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const v1, 0x1040415

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateForSimCardChanged(I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "BLOCKED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const v1, 0x10402f6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateForSimCardChanged(I)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "READY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimMissed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimBlocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierLabels:[Lcom/android/systemui/statusbar/CarrierLabel;

    aget-object v0, v0, v8

    const v1, 0x10402e6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->updateForSimCardChanged(I)V

    goto/16 :goto_0
.end method
