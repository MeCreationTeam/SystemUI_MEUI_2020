.class public Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "StayAwakePluggedButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleStayAwakePlugged"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getStayAwakePluggedEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x7f080036

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 3

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->getStayAwakePluggedEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected updateState()V
    .locals 1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->getStayAwakePluggedEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0201f4

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mState:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0201f3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;->mState:I

    goto :goto_0
.end method
