.class public Lcom/tenten/LenoxPicture;
.super Landroid/widget/ImageView;
.source "LenoxPicture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/LenoxPicture$SettingsObserver;
    }
.end annotation


# instance fields
.field animm:Ljava/lang/Boolean;

.field c:Landroid/content/Context;

.field public h:Landroid/os/Handler;

.field public mHandler:Landroid/os/Handler;

.field picanim:I

.field pichide:I

.field public r:Ljava/lang/Runnable;

.field thread:Ljava/lang/Thread;

.field uri1:Landroid/net/Uri;

.field uri2:Landroid/net/Uri;

.field whatpic:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/tenten/LenoxPicture$2;

    invoke-direct {v1, p0}, Lcom/tenten/LenoxPicture$2;-><init>(Lcom/tenten/LenoxPicture;)V

    iput-object v1, p0, Lcom/tenten/LenoxPicture;->r:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tenten/LenoxPicture;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tenten/LenoxPicture;->h:Landroid/os/Handler;

    new-instance v0, Lcom/tenten/LenoxPicture$SettingsObserver;

    iget-object v1, p0, Lcom/tenten/LenoxPicture;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/tenten/LenoxPicture$SettingsObserver;-><init>(Lcom/tenten/LenoxPicture;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/tenten/LenoxPicture$SettingsObserver;->observe()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tenten/LenoxPicture;->animm:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/tenten/LenoxPicture;->updatepic()V

    invoke-virtual {p0}, Lcom/tenten/LenoxPicture;->restartthread()V

    new-instance v1, Lcom/tenten/LenoxPicture$1;

    invoke-direct {v1, p0}, Lcom/tenten/LenoxPicture$1;-><init>(Lcom/tenten/LenoxPicture;)V

    invoke-virtual {p0, v1}, Lcom/tenten/LenoxPicture;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public anim()V
    .locals 4

    iget-object v1, p0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "picanim"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tenten/LenoxPicture;->picanim:I

    iget v1, p0, Lcom/tenten/LenoxPicture;->picanim:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tenten/LenoxPicture;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tenten/LenoxPicture;->restartthread()V

    iget-object v1, p0, Lcom/tenten/LenoxPicture;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tenten/LenoxPicture;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public restartthread()V
    .locals 1

    new-instance v0, Lcom/tenten/LenoxPicture$3;

    invoke-direct {v0, p0}, Lcom/tenten/LenoxPicture$3;-><init>(Lcom/tenten/LenoxPicture;)V

    iput-object v0, p0, Lcom/tenten/LenoxPicture;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public updatepic()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picanim1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tenten/LenoxPicture;->uri1:Landroid/net/Uri;

    iget-object v0, p0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picanim2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tenten/LenoxPicture;->uri2:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picmagic"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tenten/LenoxPicture;->whatpic:I

    iget-object v0, p0, Lcom/tenten/LenoxPicture;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pichide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tenten/LenoxPicture;->pichide:I

    iget v0, p0, Lcom/tenten/LenoxPicture;->pichide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxPicture;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/tenten/LenoxPicture;->setVisibility(I)V

    :try_start_1
    iget v0, p0, Lcom/tenten/LenoxPicture;->whatpic:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tenten/LenoxPicture;->uri2:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxPicture;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tenten/LenoxPicture;->uri1:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxPicture;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    nop
.end method
