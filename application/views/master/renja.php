     <!-- Begin Page Content -->
     <div class="container-fluid">

         <!-- Page Heading -->
         <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>



         <div class="row">
             <div class="col-lg-6">
                 <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                 <?= $this->session->flashdata('message'); ?>
                 <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newMenuModal">Add New Menu</a>

                 <table class="table fa-fw table-hover">
                     <thead>
                         <tr>
                             <th scope="col">#</th>
                             <th scope="col">ID Usulan</th>
                             <th scope="col">ID Urusan</th>
                             <th scope="col">ID SKPD</th>
                             <th scope="col">ID Bidang</th>
                             <th scope="col">Kode Program</th>
                             <th scope="col">ID Kegiatan</th>
                             <th scope="col">Nama Kegiatan</th>
                             <th scope="col">Pagu Indikatif</th>
                             <th scope="col">Sumber Dana</th>
                             <th scope="col">Aksi</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php $i = 1; ?>
                         <?php foreach ($renjamaster as $m) : ?>
                             <tr>
                                 <th scope="row"><?= $i; ?></th>
                                 <td><?= $m['id_usulan']; ?></td>
                                 <td><?= $m['id_urusan']; ?></td>
                                 <td><?= $m['id_skpd']; ?></td>
                                 <td><?= $m['id_bidang']; ?></td>
                                 <td><?= $m['kd_program']; ?></td>
                                 <td><?= $m['id_kegiatan']; ?></td>
                                 <td><?= $m['indikator_kinerja']; ?></td>
                                 <td><?= $m['pagu_indikatif']; ?></td>
                                 <td><?= $m['sumber_dana']; ?></td>
                                 <td><?= $m['verusulan']; ?></td>
                                 <td>
                                     <a href="" class="badge badge-success">edit</a>
                                     <a href="" class="badge badge-danger">delete</a>
                                 </td>
                             </tr>
                             <?php $i++; ?>
                         <?php endforeach; ?>
                     </tbody>
                 </table>
             </div>


         </div>

     </div>
     <!-- /.container-fluid -->

     </div>
     <!-- End of Main Content -->

     <!-- Modal -->
     <div class="modal fade" id="newMenuModal" tabindex="-1" role="dialog" aria-labelledby="newMenuModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="newMenuModalLabel">Add New Menu</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <form action="<?= base_url('master/urusan'); ?>" method="post">
                     <div class="modal-body">
                         <div class="form-group">
                             <input type="text" class="form-control" id="menu" name="menu" placeholder="Menu name">
                         </div>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                         <button type="submit" class="btn btn-primary">Add</button>
                     </div>
                 </form>
             </div>
         </div>
     </div>