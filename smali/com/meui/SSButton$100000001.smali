.class Lcom/meui/SSButton$100000001;
.super Ljava/lang/Object;
.source "SSButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meui/SSButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/meui/SSButton;


# direct methods
.method constructor <init>(Lcom/meui/SSButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meui/SSButton$100000001;->this$0:Lcom/meui/SSButton;

    return-void
.end method

.method static access$0(Lcom/meui/SSButton$100000001;)Lcom/meui/SSButton;
    .locals 1

    iget-object v0, p0, Lcom/meui/SSButton$100000001;->this$0:Lcom/meui/SSButton;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/meui/SSButton$100000001;->this$0:Lcom/meui/SSButton;

    invoke-virtual {v0}, Lcom/meui/SSButton;->getContext()Landroid/content/Context;

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
