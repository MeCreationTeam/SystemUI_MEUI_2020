.class Lcom/tenten/LenoxPicture$3;
.super Ljava/lang/Thread;
.source "LenoxPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LenoxPicture;->restartthread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LenoxPicture;


# direct methods
.method constructor <init>(Lcom/tenten/LenoxPicture;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LenoxPicture$3;->this$0:Lcom/tenten/LenoxPicture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Lcom/tenten/LenoxPicture$3;->sleep(J)V

    iget-object v1, p0, Lcom/tenten/LenoxPicture$3;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v1, v1, Lcom/tenten/LenoxPicture;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tenten/LenoxPicture$3;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v2, v2, Lcom/tenten/LenoxPicture;->r:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
