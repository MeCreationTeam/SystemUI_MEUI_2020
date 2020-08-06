.class Lcom/android/systemui/statusbar/add/PanelSwitcher$4;
.super Ljava/lang/Object;
.source "PanelSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/add/PanelSwitcher;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/add/PanelSwitcher;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    iget-object v3, v3, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    iget-object v3, v3, Lcom/android/systemui/statusbar/add/PanelSwitcher;->tab2:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    iget v3, v3, Lcom/android/systemui/statusbar/add/PanelSwitcher;->mCurrentView:I

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->moveLeft(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/add/PanelSwitcher$4;->this$0:Lcom/android/systemui/statusbar/add/PanelSwitcher;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/add/PanelSwitcher;->moveLeft(I)V

    goto :goto_0
.end method
