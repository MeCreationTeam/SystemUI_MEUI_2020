.class Lcom/tenten/LenoxPicture$1;
.super Ljava/lang/Object;
.source "LenoxPicture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LenoxPicture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcom/tenten/LenoxPicture$1;->this$0:Lcom/tenten/LenoxPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tenten/LenoxPicture$1;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v0, v0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picanim"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/tenten/LenoxPicture$1;->this$0:Lcom/tenten/LenoxPicture;

    iget v0, v0, Lcom/tenten/LenoxPicture;->whatpic:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tenten/LenoxPicture$1;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v0, v0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picmagic"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tenten/LenoxPicture$1;->this$0:Lcom/tenten/LenoxPicture;

    iget-object v0, v0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picmagic"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
