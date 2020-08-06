.class Lcom/android/systemui/statusbar/StatusBarService$3;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$3;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$3;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v2, v2, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AND new=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "new"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$3;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$3;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
