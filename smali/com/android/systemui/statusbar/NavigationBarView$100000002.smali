.class Lcom/android/systemui/statusbar/NavigationBarView$100000002;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/NavigationBarView$100000002;)Lcom/android/systemui/statusbar/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x4

    const v3, 0x7f02020c

    const/16 v2, 0x46

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$L1000008(Lcom/android/systemui/statusbar/NavigationBarView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    const/4 v1, 0x3

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->simulateKeypress(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000028(Lcom/android/systemui/statusbar/NavigationBarView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000020(Lcom/android/systemui/statusbar/NavigationBarView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$L1000008(Lcom/android/systemui/statusbar/NavigationBarView;)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    const/16 v1, 0x52

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->simulateKeypress(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000028(Lcom/android/systemui/statusbar/NavigationBarView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000020(Lcom/android/systemui/statusbar/NavigationBarView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/NavigationBarView;->mShowBack:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$L1000008(Lcom/android/systemui/statusbar/NavigationBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->simulateKeypress(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000028(Lcom/android/systemui/statusbar/NavigationBarView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000020(Lcom/android/systemui/statusbar/NavigationBarView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
