# Virtualisation

Now, it’s time for you to understand the basic technologies that made cloud computing possible. The backbone of cloud computing is the ability to run multiple individual systems on a single hardware. Let’s learn about the technology that enables this operation.

**VIDEO**

Virtualisation enables multiple operating systems to run on the same hardware. You also explored its architecture by comparing it with traditional architecture. The architecture that is followed in typical laptops is Traditional architecture, whereas virtualisation architecture is used by some cloud service providers to run multiple virtual machines on a single hardware.

![Traditional vs Virtualisation Architecture](https://i.ibb.co/bdqPVFk/Traditional-vs-Virtualisation-Architecture.png)

#### Quiz

Qn: Select all the true statements.

- The hardware on which the virtualisation layer runs multiple operating systems is called a host machine.

- The virtual machines running on the virtualisation layer are called guest machines.

- The multiple machines running on the same hardware using a virtualisation layer are called virtual machines.

- The hardware on which the virtualisation layer runs multiple operating systems is called a virtual machine.

Ans: A, B & C. *If you look at the virtualisation architecture above, you can see multiple virtual machines running on a single host machine using the virtualisation layer. The virtual machines running on the virtualisation layer are called guest machines.*

Qn: Define virtual machine in your own words in the textbox given below.

Ans: **Virtual Machine:** It is an isolated logical entity capable of running software programs or guest operating systems that exhibit the behaviour of a separate computer.

Qn: Let’s say an organisation called SocOrg is willing to use virtualisation for their current data centre. What benefits can they expect to derive from this?

- Fast application speed

- Faster provision of resources to multiple users

- All the above

Ans: B. *Using virtualisation, you can quickly create and terminate virtual machines with the required resources. But if you want to maintain a physical machine with the required resources, it will consume more time and require manual work, whereas in virtualisation, you can do this just by a click at your end.*

A common example of virtualisation would be using Windows OS on a machine with Linux OS as the host using virtualisation software like VMWare. The "guest" operating system environments share the same running instance of the operating system as the host system. Thus, the same [operating system kernel](https://en.wikipedia.org/wiki/Operating_system_kernel "Operating system kernel") is also used to implement the "guest" environments, and applications running in a given "guest" environment view it as a stand-alone system.

Now, you must have understood that the virtualisation layer helps to decouple the hardware from the operating system. However, you must be wondering how this decoupling happens. In this video, you will learn what exactly allows the virtualisation layer to share hardware among multiple virtual machines.

**VIDEO**

You have learnt that the Hypervisor in the virtualisation layer controls and shares the hardware among multiple virtual machines. There are two types of hypervisors and you also explored the Bare-metal/native Hypervisor.

![Bare Metal Hypervisor](https://i.ibb.co/7Gxkcmt/Bare-Metal-Hypervisor.png)

Examples of Bare Metal hypervisor include :

1. VMWare's ESXi
2. Microsoft's Hyper V
3. Xen Hypervisor

You also learnt that the bare-metal hypervisor resides on the hardware and enables it to run multiple virtual machines on top of it. But, is there a way to create this virtual environment if you are working on a typical machine, where the operating system resides directly on the hardware? Yes, and this is where type 2 hypervisor comes into the picture.

Let’s quickly learn about it from Vinod.

**VIDEO**

Qn: How is the architecture of a hosted hypervisor different from that of a bare-metal hypervisor? Write in your own words.

Ans: *Bare metal hypervisor resides on the hardware. Whereas, the hosted hypervisor resides on the host operating system.*

You explored the other type of hypervisor, which is hosted hypervisor, and understood its architecture. Here, the hosted hypervisor runs on top of the host operating system, which resides on the hardware. This is why the hosted hypervisor is a bit slower than a bare-metal hypervisor.

![Hosted Hypervisor](https://i.ibb.co/k4PpHqS/Hosted-Hypervisor.png)

Examples include :

1. Oracle Virtual Box
2. VMWare Workstation

Let's summarise the differences between the two.

| **Bare-metal hypervisor (Type 1)**                        | **Hosted hypervisor (Type 2)**                                                                                                      |
| --------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| It resides directly on the hardware.                      | It interacts with the hardware through the host operating system.                                                                   |
| It is faster, as it directly interacts with the hardware. | It is a bit slower when compared to the bare metal hypervisor, as it interacts with the hardware through the host operating system. |

Now, try to answer the following questions.

#### Questions

Qn: Which one of these is a bare-metal/native hypervisor?

- Microsoft Virtual PC

- Oracle Virtual Box

- VMware ESX

- KVM

Ans: C. *Some examples of bare-metal hypervisors are VMware ESX, Microsoft Hyper-V, Xen, etc.*

Qn: Which one of these is a Hosted hypervisor?

- Microsoft Hyper-V

- VMware Workstation

- Xen

- None of the above

Ans: B. *Some examples of hosted hypervisors are VMware workstation, Microsoft virtual PC, oracle virtual box, KVM, etc.*

Qn: Which type of hypervisor is faster?

- Bare-metal/native

- Hosted

- Both are equal in terms of performance.

Ans: A. *Bare-metal/native hypervisor is faster than hosted hypervisor because the native hypervisor resides directly on the hardware resources, whereas the hosted hypervisor has to access the resources via the Host OS.*

Qn: Bare-metal and hosted hypervisors are known as type-1 and type-2 hypervisors, respectively. A Windows machine is running a Red Hat Linux operating system using Oracle VM VirtualBox. Identify whether the hypervisor is of type 1 or type 2.

- Type 1

- Type 2

Ans: D. *Since the hypervisor is hosted on a Windows operating system and is not directly hosted on physical hardware, it is a type-2 (hosted) hypervisor.*

Qn: A Windows machine is running a Red Hat Linux operating system using QuickStart VM. Which among the following options lists the hypervisor, virtual machine OS, and host machine OS, respectively?

- Windows, QuickStart VM, Red Hat Linux

- Red Hat Linux, QuickStart VM, Windows

- Windows, Red Hat Linux, QuickStart VM

- QuickStart VM, Red Hat Linux, Windows

Ans: D. *Here, Red Hat Linux is running on the Windows machine. Therefore, Red Hat Linux is the Guest OS, and Windows is the Host Machine OS. The Windows machine is running a Red Hat Linux operating system using QuickStart VM. Therefore, QuickStart VM is the hypervisor.*

![Hypervidor_VM-OS_Host_Machine_OS](https://i.ibb.co/Tv8jXBY/Hypervidor-VM-OS-Host-Machine-OS.png)

In this segment, you learnt about virtualisation, which is one of the basic technologies that made cloud possible. In the next segment, you will learn about similar technology which has some more advantages over virtualisation.
