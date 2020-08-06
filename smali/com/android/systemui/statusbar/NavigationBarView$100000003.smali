.class Lcom/android/systemui/statusbar/NavigationBarView$100000003;
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
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/NavigationBarView$100000003;)Lcom/android/systemui/statusbar/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/NavigationBarView;->mShowHome:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarView;->access$L1000006(Lcom/android/systemui/statusbar/NavigationBarView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/NavigationBarView;->mShowHome:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarView;->access$L1000006(Lcom/android/systemui/statusbar/NavigationBarView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/NavigationBarView;->mInputShow:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarView;->access$L1000010(Lcom/android/systemui/statusbar/NavigationBarView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$100000003;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarView;->mHomeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
