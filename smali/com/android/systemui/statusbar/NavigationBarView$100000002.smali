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
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    const/4 v1, 0x4

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->simulateKeypress(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000009(Lcom/android/systemui/statusbar/NavigationBarView;I)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #calls: Lcom/android/systemui/statusbar/NavigationBarView;->updateNaviButtons()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$1000005(Lcom/android/systemui/statusbar/NavigationBarView;)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000002;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mResetBack:Ljava/lang/Runnable;

    const/16 v2, 0x46

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
