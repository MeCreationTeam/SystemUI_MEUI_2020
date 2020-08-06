.class Lcom/android/systemui/statusbar/StatusBarPolicy$7;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$otherTrustSsids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$7;->val$otherTrustSsids:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$7;->val$otherTrustSsids:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mIndex:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/StatusBarPolicy;)I

    move-result v2

    aget-object v1, v1, v2

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->enableSelectedNework(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2800(Lcom/android/systemui/statusbar/StatusBarPolicy;Ljava/lang/String;)V

    return-void
.end method
