.class Lcom/android/systemui/statusbar/NavigationBarView$100000004;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000004;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/NavigationBarView$100000004;)Lcom/android/systemui/statusbar/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000004;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000004;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000004;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mBackButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method
