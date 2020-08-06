.class public Lcom/tenten/LenoxLabel;
.super Landroid/widget/TextView;
.source "LenoxLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenten/LenoxLabel$SettingsObserver;
    }
.end annotation


# instance fields
.field anim:I

.field c:Landroid/content/Context;

.field color:I

.field h:Landroid/os/Handler;

.field public mHandler:Landroid/os/Handler;

.field public r:Ljava/lang/Runnable;

.field size:I

.field style:I

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;

.field thread:Ljava/lang/Thread;

.field whattext:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/tenten/LenoxLabel$2;

    invoke-direct {v1, p0}, Lcom/tenten/LenoxLabel$2;-><init>(Lcom/tenten/LenoxLabel;)V

    iput-object v1, p0, Lcom/tenten/LenoxLabel;->r:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tenten/LenoxLabel;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tenten/LenoxLabel;->h:Landroid/os/Handler;

    new-instance v0, Lcom/tenten/LenoxLabel$SettingsObserver;

    iget-object v1, p0, Lcom/tenten/LenoxLabel;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/tenten/LenoxLabel$SettingsObserver;-><init>(Lcom/tenten/LenoxLabel;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/tenten/LenoxLabel$SettingsObserver;->observe()V

    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->updatelabel()V

    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->updatetext()V

    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->restartthread()V

    new-instance v1, Lcom/tenten/LenoxLabel$1;

    invoke-direct {v1, p0}, Lcom/tenten/LenoxLabel$1;-><init>(Lcom/tenten/LenoxLabel;)V

    invoke-virtual {p0, v1}, Lcom/tenten/LenoxLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public anim()V
    .locals 4

    iget-object v1, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tenanim"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tenten/LenoxLabel;->anim:I

    iget v1, p0, Lcom/tenten/LenoxLabel;->anim:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tenten/LenoxLabel;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->restartthread()V

    iget-object v1, p0, Lcom/tenten/LenoxLabel;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tenten/LenoxLabel;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public dosomemagic()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tencolor1"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tencolor2"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tencolor3"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tenrandom"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v5, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tencolor"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->getCurrentTextColor()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->getCurrentTextColor()I

    move-result v5

    if-ne v5, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/tenten/LenoxLabel;->getCurrentTextColor()I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restartthread()V
    .locals 1

    new-instance v0, Lcom/tenten/LenoxLabel$3;

    invoke-direct {v0, p0}, Lcom/tenten/LenoxLabel$3;-><init>(Lcom/tenten/LenoxLabel;)V

    iput-object v0, p0, Lcom/tenten/LenoxLabel;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public updatelabel()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tencolor"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tenten/LenoxLabel;->color:I

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tensize"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tenten/LenoxLabel;->size:I

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tenstyle"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tenten/LenoxLabel;->style:I

    iget v0, p0, Lcom/tenten/LenoxLabel;->color:I

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxLabel;->setTextColor(I)V

    iget v0, p0, Lcom/tenten/LenoxLabel;->size:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxLabel;->setTextSize(F)V

    iget v0, p0, Lcom/tenten/LenoxLabel;->style:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v3, v5}, Lcom/tenten/LenoxLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tenten/LenoxLabel;->style:I

    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v3, v6}, Lcom/tenten/LenoxLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tenten/LenoxLabel;->style:I

    if-ne v0, v6, :cond_3

    invoke-virtual {p0, v3, v7}, Lcom/tenten/LenoxLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tenten/LenoxLabel;->style:I

    if-ne v0, v7, :cond_0

    sget v0, Landroid/graphics/Typeface;->NORMAL:I

    invoke-virtual {p0, v3, v0}, Lcom/tenten/LenoxLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public updatetext()V
    .locals 3

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tentext1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenten/LenoxLabel;->text1:Ljava/lang/String;

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tentext2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenten/LenoxLabel;->text2:Ljava/lang/String;

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "magic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tenten/LenoxLabel;->whattext:I

    iget v0, p0, Lcom/tenten/LenoxLabel;->whattext:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenten/LenoxLabel;->text2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxLabel;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tenten/LenoxLabel;->text1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tenten/LenoxLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
