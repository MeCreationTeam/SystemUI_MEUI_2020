.class Lcom/android/systemui/statusbar/StatusBarPolicy$6;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #setter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mIndex:I
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2702(Lcom/android/systemui/statusbar/StatusBarPolicy;I)I

    return-void
.end method
