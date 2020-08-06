.class Lcom/tenten/LenoxPicture$2;
.super Ljava/lang/Object;
.source "LenoxPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LenoxPicture;
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

    iput-object p1, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v0, v0, Lcom/tenten/LenoxPicture;->animm:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v1, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v1, v1, Lcom/tenten/LenoxPicture;->uri2:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/tenten/LenoxPicture;->setImageURI(Landroid/net/Uri;)V

    :goto_0
    iget-object v1, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v0, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v0, v0, Lcom/tenten/LenoxPicture;->animm:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/tenten/LenoxPicture;->animm:Ljava/lang/Boolean;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v1, p0, Lcom/tenten/LenoxPicture$2;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v1, v1, Lcom/tenten/LenoxPicture;->uri1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/tenten/LenoxPicture;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
