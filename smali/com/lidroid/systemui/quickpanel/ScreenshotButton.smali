.class public Lcom/lidroid/systemui/quickpanel/ScreenshotButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "ScreenshotButton.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleScreenshot"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->mState:I

    return-void
.end method

.method private openScreenshot()V
    .locals 4

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.cyanogenmod.screenshot"

    const-string v3, "com.cyanogenmod.screenshot.ScreenshotActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x7f080043

    return v0
.end method

.method protected handleLongClick()Z
    .locals 4

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.meui.RomCtrl"

    const-string v3, "com.meui.RomCtrl.SSPref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected toggleState()V
    .locals 0

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->openScreenshot()V

    return-void
.end method

.method protected updateState()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->mState:I

    const v0, 0x7f0201cd

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;->mIcon:I

    return-void
.end method
