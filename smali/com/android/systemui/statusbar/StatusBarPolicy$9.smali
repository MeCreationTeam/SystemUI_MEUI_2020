.class Lcom/android/systemui/statusbar/StatusBarPolicy$9;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;->showWifiDisconnDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.download.spstoptask"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
